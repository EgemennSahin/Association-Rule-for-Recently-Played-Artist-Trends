# SpotifySongAnalysis
Analysing user's recently played songs and building connections between the songs

Contact: egemen.sahin.23@dartmouth.edu

# Step-by-Step Process

## 1. SCRAPING THE DATA (Python)
1. Set up Spotify's API [here](https://developer.spotify.com/documentation/web-api/quick-start/) and go to your Dashboard
2. Create a new app
3. Get the client id and secret client id from your App
4. Set up a redirect url in your App settings
5. Run *scrape_user_recent_tracks.ipynb*
6. Replace the environment variables in the Jupyter notebook with your client id and secret id
7. Run the Jupyter notebook, and accept Spotify's request for authorization.
8. After accepting, copy the link and paste it into entry box in Jupyter notebook 
9. Run the notebook to export the CSV

## 2. MANIPULATING THE DATA (SQL) 
1. Import the CSV into your DBMS
2. Run *SQLQueryRecentTracks*
3. Export the output of your query

## 3. VISUALIZING THE DATA (Tableau)
1. Import the SQL query's output into Tableau.
2. Create a new sheet with the following parameters:
    | Field | Variables |
    | ----------- | ----------- |
    | Rows | Artist, Next Artist |
    | Column | SUM(Transitions) |
3. Change into a treemap to visualize the data as it is efficient for grouping the transitions between artists by artist
