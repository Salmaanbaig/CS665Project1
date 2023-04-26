from flask import Flask, render_template, request
import mysql.connector 

app = Flask(__name__)


def fetch_data(house_id="", owner_id="", house_det="", house_id_del=""):
    
    cnx = mysql.connector.connect(user='root', password='123456789',
                              host='localhost', database='house_sales')

# Create a cursor object to execute queries
    cursor = cnx.cursor()
    
    if len(house_id)>=1:
        query = """

        select * from bike
        where bike.house_id = {Id};
        
        """

        main_query = query.format(Id=house_id)
        cursor.execute(main_query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
        
    # get all the employee salaries greater than given input
    if len(owner_id)>=1:
        query = """

        select * from ownerdetails 
        join gov_details
        on gov_details.current_owner_id = ownerdetails.owner_id
        join oldownerdetails
        on gov_details.OLD_owner_id = oldownerdetails.owner_Id
        where ownerdetails.owner_id = {Id};
        
        """

        main_query = query.format(Id=owner_id)
        cursor.execute(main_query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
    if len(house_det)>1:
        Id, Area, Furnish_details, type, Price = house_det.split(",")
        query = """
        INSERT INTO House_Sales.bike (house_id, Area, Furnished_Details, House_type, House_Price)
        VALUES ({Id},{area},"{furnish}","{housetype}",{houseprice});
        """
        main_query = query.format(Id=Id, area = Area, furnish = Furnish_details, housetype = type, houseprice = Price)
        cursor.execute(main_query)
        cnx.commit()

        query = """
        select * from bike;
        """
        cursor.execute(query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
    if len(house_id_del)>=1:
         
        query = """

        Delete from bike
        where bike.house_id = {Id};
        
        """

        main_query = query.format(Id=house_id_del)
        cursor.execute(main_query)
        cnx.commit()

        query = """
        select * from bike;
        """
        cursor.execute(query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
@app.route("/", methods =["GET", "POST"])
def index():
    if request.method == "POST":
        house_id = request.form['house_id']
        print(house_id)
        owner_id = request.form['owner_id']
        house_det = request.form['house_det']
        house_id_del = request.form['house_id_del']
        headings, data = fetch_data(house_id, owner_id, house_det, house_id_del)
        return render_template("Main_page.html", headings=headings, data=data)
    return render_template("Main_page.html")


if __name__=="__main__":
    app.run(debug=True)