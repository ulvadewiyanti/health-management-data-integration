
  
    

  create  table "prodia_test"."public"."int_appointment_details__dbt_tmp"
  
  
    as
  
  (
    -- models/intermediate/int_appointment_details.sql



with appointment_info as (
    select
        a.AppointmentID,
        a.AppointmentDate,
        a.AppointmentTime,
        p.PatientID,
        concat(p.firstname, ' ', p.lastname) as patient_name,
        d.DoctorName,
        pr.ProcedureName,
        case when a.AppointmentDate < CURRENT_DATE then 1 else 0 end as is_overdue
    from
        "prodia_test"."public"."stg_appointments" a
    join
        "prodia_test"."public"."stg_patients" p on a.PatientID = p.PatientID
    join
        "prodia_test"."public"."stg_doctors" d on a.DoctorID = d.DoctorID
    left join
        "prodia_test"."public"."stg_procedures" pr on a.AppointmentID = pr.AppointmentID
)

select * from appointment_info
  );
  