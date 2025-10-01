CREATE DATABASE football IF NOT EXISTS OWNER behzodbek;
GRANT ALL PRIVILEGES ON DATABASE football TO behzodbek;


CREATE TABLE tournaments(
    tournament_id SERIAL PRIMARY KEY,
    tournament_name VARCHAR(250) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'upcoming'
)

CREATE TABLE tournament_groups(
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(50) NOT NULL,
    tournament_id INT NOT NULL REFERENCES tournaments(tournament_id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE match_fixtures(
    match_id SERIAL PRIMARY KEY
)