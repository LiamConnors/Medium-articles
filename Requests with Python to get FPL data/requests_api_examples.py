import requests

team_id = ""


def get_my_team(team_id, current_week="36"):
    url = "https://fantasy.premierleague.com/api/entry/"+team_id+"/event/"+current_week+"/picks/"
    my_team_data = requests.get(url)
    
    if my_team_data.status_code != 200:
        raise Exception("The following response was returned: " + str(my_team_data.status_code))
        
    else:
        my_team_data.json()
        my_team_data = my_team_data["picks"]

        return my_team_data
    
    