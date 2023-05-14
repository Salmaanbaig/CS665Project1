       select * from bike
        where bike.house_id = 1;

        select * from ownerdetails 
        join gov_details
        on gov_details.current_owner_id = ownerdetails.owner_id
        join oldownerdetails
        on gov_details.OLD_owner_id = oldownerdetails.owner_Id
        where ownerdetails.owner_id = 1;



        INSERT INTO House_Sales.bike (house_id, Area, Furnished_Details, House_type, House_Price)
        VALUES ({Id},{area},"{furnish}","{housetype}",{houseprice});

        Delete from bike
        where bike.house_id = {Id};