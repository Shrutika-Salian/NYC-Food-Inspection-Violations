


Create or alter View Grade_A_vw([InspectionViolationSK],DBA,FoodPlacesSK,InspectionTypeSK,ActionSK,InspectionSK,ViolationCodeSK
      ,Action
      ,[SCORE], GRADE, INSPECTION_TYPE, Boro
      ,[Grade_Date]
      ,VIOLATION_DESCRIPTION
	  ,Inspection_Date) as 
((SELECT [InspectionViolationSK],DBA,FCT_NYC_Food_Inspections.FoodPlacesSK, [FCT_NYC_FoodInspection_Violations].InspectionViolationSK
	  	 ,[FCT_NYC_FoodInspection_Violations].InspectionTypeSK
		 ,[FCT_NYC_FoodInspection_Violations].ActionSK
		 ,[FCT_NYC_FoodInspection_Violations].InspectionSK
		 ,[FCT_NYC_FoodInspection_Violations].ViolationCodeSK
		 ,Action
		 ,[SCORE], GRADE
	     ,INSPECTION_TYPE, Boro
         ,[Grade_Date]
         ,VIOLATION_DESCRIPTION
	     ,Inspection_Date
FROM [NYC_DW].[dbo].[FCT_NYC_FoodInspection_Violations] 
  join Dim_NYC_Inspection_Grades on [NYC_DW].[dbo].[FCT_NYC_FoodInspection_Violations].GradeSK =  Dim_NYC_Inspection_Grades.GradeSK
  join Dim_NYC_Inspection_Type on [NYC_DW].[dbo].[FCT_NYC_FoodInspection_Violations].InspectionTypeSK=Dim_NYC_Inspection_Type.InspectionTypeSK
  Join Dim_NYC_Inspection_Actions on [NYC_DW].[dbo].[FCT_NYC_FoodInspection_Violations].ActionSK=Dim_NYC_Inspection_Actions.ActionSK
  join FCT_NYC_Food_Inspections on [NYC_DW].[dbo].[FCT_NYC_FoodInspection_Violations].InspectionSK=FCT_NYC_Food_Inspections.InspectionSK
  join Dim_NYC_Violation_Codes on [NYC_DW].[dbo].[FCT_NYC_FoodInspection_Violations].ViolationCodeSK = Dim_NYC_Violation_Codes.ViolationCodeSK
  join Dim_NYC_Food_Places on FCT_NYC_Food_Inspections.FoodPlacesSK =  Dim_NYC_Food_Places.FoodPlacesSK
  join Dim_NYC_Borough on FCT_NYC_Food_Inspections.BoroSK = Dim_NYC_Borough.BoroSK
 where GRADE in ('A','N','Z') AND Inspection_Date!='1900-01-01' and Score between 0 and 14 or ACTION like '%Establishment re-opened by DOHMH.%'
 and ((INSPECTION_TYPE like '%Re-inspection%') or (INSPECTION_TYPE like '%Initial Inspection%'))))