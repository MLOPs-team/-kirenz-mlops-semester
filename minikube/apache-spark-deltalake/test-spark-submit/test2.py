import json



if __name__ == "__main__":
    data = json.loads('[{"age_range":"10-17","outcome":"Arrest","involved_person":true,"self_defined_ethnicity":"Other ethnic group - Not stated","gender":"Male","legislation":"Police and Criminal Evidence Act 1984 (section 1)","outcome_linked_to_object_of_search":null,"datetime":"2021-10-29T23:03:00+00:00","removal_of_more_than_outer_clothing":false,"outcome_object":{"id":"bu-arrest","name":"Arrest"},"location":null,"operation":null,"officer_defined_ethnicity":"White","type":"Person search","operation_name":null,"object_of_search":"Stolen goods","force":"avon-and-somerset"}]')
    print(data)