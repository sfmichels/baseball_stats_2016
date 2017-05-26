# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170518225655) do

  create_table "AllstarFull", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.integer "gameNum"
    t.string "gameID"
    t.string "teamID"
    t.string "lgID"
    t.integer "GP"
    t.string "startingPos"
  end

  create_table "Appearances", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "yearID"
    t.string "teamID"
    t.string "lgID"
    t.string "playerID"
    t.integer "G_all"
    t.string "GS"
    t.integer "G_batting"
    t.integer "G_defense"
    t.integer "G_p"
    t.integer "G_c"
    t.integer "G_1b"
    t.integer "G_2b"
    t.integer "G_3b"
    t.integer "G_ss"
    t.integer "G_lf"
    t.integer "G_cf"
    t.integer "G_rf"
    t.integer "G_of"
    t.string "G_dh"
    t.string "G_ph"
    t.string "G_pr"
  end

  create_table "AwardsManagers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.string "awardID"
    t.integer "yearID"
    t.string "lgID"
    t.string "tie"
    t.string "notes"
  end

  create_table "AwardsPlayers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.string "awardID"
    t.integer "yearID"
    t.string "lgID"
    t.string "tie"
    t.string "notes"
  end

  create_table "AwardsShareManagers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "awardID"
    t.integer "yearID"
    t.string "lgID"
    t.string "playerID"
    t.integer "pointsWon"
    t.integer "pointsMax"
    t.integer "votesFirst"
  end

  create_table "AwardsSharePlayers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "awardID"
    t.integer "yearID"
    t.string "lgID"
    t.string "playerID"
    t.integer "pointsWon"
    t.integer "pointsMax"
    t.integer "votesFirst"
  end

  create_table "Batting", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.integer "stint"
    t.string "teamID"
    t.string "lgID"
    t.integer "G"
    t.integer "AB"
    t.integer "R"
    t.integer "H"
    t.integer "2B"
    t.integer "3B"
    t.integer "HR"
    t.integer "RBI"
    t.integer "SB"
    t.integer "CS"
    t.integer "BB"
    t.integer "SO"
    t.string "IBB"
    t.string "HBP"
    t.string "SH"
    t.string "SF"
    t.string "GIDP"
  end

  create_table "BattingPost", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "yearID"
    t.string "round"
    t.string "playerID"
    t.string "teamID"
    t.string "lgID"
    t.integer "G"
    t.integer "AB"
    t.integer "R"
    t.integer "H"
    t.integer "2B"
    t.integer "3B"
    t.integer "HR"
    t.integer "RBI"
    t.integer "SB"
    t.string "CS"
    t.integer "BB"
    t.integer "SO"
    t.integer "IBB"
    t.string "HBP"
    t.string "SH"
    t.string "SF"
    t.string "GIDP"
  end

  create_table "CollegePlaying", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.string "schoolID"
    t.integer "yearID"
  end

  create_table "Fielding", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.integer "stint"
    t.string "teamID"
    t.string "lgID"
    t.string "POS"
    t.integer "G"
    t.string "GS"
    t.string "InnOuts"
    t.integer "PO"
    t.integer "A"
    t.integer "E"
    t.integer "DP"
    t.string "PB"
    t.string "WP"
    t.string "SB"
    t.string "CS"
    t.string "ZR"
  end

  create_table "FieldingOF", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.integer "stint"
    t.integer "Glf"
    t.integer "Gcf"
    t.integer "Grf"
  end

  create_table "FieldingOFsplit", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.integer "stint"
    t.string "teamID"
    t.string "lgID"
    t.string "POS"
    t.integer "G"
    t.integer "GS"
    t.integer "InnOuts"
    t.integer "PO"
    t.integer "A"
    t.integer "E"
    t.integer "DP"
    t.string "PB"
    t.string "WP"
    t.string "SB"
    t.string "CS"
    t.string "ZR"
  end

  create_table "FieldingPost", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.string "teamID"
    t.string "lgID"
    t.string "round"
    t.string "POS"
    t.integer "G"
    t.integer "GS"
    t.integer "InnOuts"
    t.integer "PO"
    t.integer "A"
    t.integer "E"
    t.integer "DP"
    t.integer "TP"
    t.string "PB"
    t.string "SB"
    t.string "CS"
  end

  create_table "HallOfFame", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearid"
    t.string "votedBy"
    t.integer "ballots"
    t.integer "needed"
    t.integer "votes"
    t.string "inducted"
    t.string "category"
    t.string "needed_note"
  end

  create_table "HomeGames", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "year.key"
    t.string "league.key"
    t.string "team.key"
    t.string "park.key"
    t.string "span.first"
    t.string "span.last"
    t.integer "games"
    t.integer "openings"
    t.integer "attendance"
  end

  create_table "Managers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.string "teamID"
    t.string "lgID"
    t.integer "inseason"
    t.integer "G"
    t.integer "W"
    t.integer "L"
    t.integer "rank"
    t.string "plyrMgr"
  end

  create_table "ManagersHalf", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.string "teamID"
    t.string "lgID"
    t.integer "inseason"
    t.integer "half"
    t.integer "G"
    t.integer "W"
    t.integer "L"
    t.integer "rank"
  end

  create_table "Master", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "birthYear"
    t.integer "birthMonth"
    t.integer "birthDay"
    t.string "birthCountry"
    t.string "birthState"
    t.string "birthCity"
    t.string "deathYear"
    t.string "deathMonth"
    t.string "deathDay"
    t.string "deathCountry"
    t.string "deathState"
    t.string "deathCity"
    t.string "nameFirst"
    t.string "nameLast"
    t.string "nameGiven"
    t.integer "weight"
    t.integer "height"
    t.string "bats"
    t.string "throws"
    t.string "debut"
    t.string "finalGame"
    t.string "retroID"
    t.string "bbrefID"
  end

  create_table "Parks", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "park.key"
    t.string "park.name"
    t.string "park.alias"
    t.string "city"
    t.string "state"
    t.string "country"
  end

  create_table "Pitching", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.integer "stint"
    t.string "teamID"
    t.string "lgID"
    t.integer "W"
    t.integer "L"
    t.integer "G"
    t.integer "GS"
    t.integer "CG"
    t.integer "SHO"
    t.integer "SV"
    t.integer "IPouts"
    t.integer "H"
    t.integer "ER"
    t.integer "HR"
    t.integer "BB"
    t.integer "SO"
    t.string "BAOpp"
    t.float "ERA", limit: 24
    t.string "IBB"
    t.string "WP"
    t.string "HBP"
    t.integer "BK"
    t.string "BFP"
    t.string "GF"
    t.integer "R"
    t.string "SH"
    t.string "SF"
    t.string "GIDP"
  end

  create_table "PitchingPost", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "playerID"
    t.integer "yearID"
    t.string "round"
    t.string "teamID"
    t.string "lgID"
    t.integer "W"
    t.integer "L"
    t.integer "G"
    t.integer "GS"
    t.integer "CG"
    t.integer "SHO"
    t.integer "SV"
    t.integer "IPouts"
    t.integer "H"
    t.integer "ER"
    t.integer "HR"
    t.integer "BB"
    t.integer "SO"
    t.float "BAOpp", limit: 24
    t.string "ERA"
    t.integer "IBB"
    t.integer "WP"
    t.integer "HBP"
    t.integer "BK"
    t.integer "BFP"
    t.integer "GF"
    t.integer "R"
    t.integer "SH"
    t.integer "SF"
    t.integer "GIDP"
  end

  create_table "Salaries", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "yearID"
    t.string "teamID"
    t.string "lgID"
    t.string "playerID"
    t.integer "salary"
  end

  create_table "Schools", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "schoolID"
    t.string "name_full"
    t.string "city"
    t.string "state"
    t.string "country"
  end

  create_table "SeriesPost", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "yearID"
    t.string "round"
    t.string "teamIDwinner"
    t.string "lgIDwinner"
    t.string "teamIDloser"
    t.string "lgIDloser"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
  end

  create_table "Teams", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "yearID"
    t.string "lgID"
    t.string "teamID"
    t.string "franchID"
    t.string "divID"
    t.integer "Rank"
    t.integer "G"
    t.string "Ghome"
    t.integer "W"
    t.integer "L"
    t.string "DivWin"
    t.string "WCWin"
    t.string "LgWin"
    t.string "WSWin"
    t.integer "R"
    t.integer "AB"
    t.integer "H"
    t.integer "2B"
    t.integer "3B"
    t.integer "HR"
    t.integer "BB"
    t.integer "SO"
    t.integer "SB"
    t.string "CS"
    t.string "HBP"
    t.string "SF"
    t.integer "RA"
    t.integer "ER"
    t.float "ERA", limit: 24
    t.integer "CG"
    t.integer "SHO"
    t.integer "SV"
    t.integer "IPouts"
    t.integer "HA"
    t.integer "HRA"
    t.integer "BBA"
    t.integer "SOA"
    t.integer "E"
    t.string "DP"
    t.float "FP", limit: 24
    t.string "name"
    t.string "park"
    t.string "attendance"
    t.integer "BPF"
    t.integer "PPF"
    t.string "teamIDBR"
    t.string "teamIDlahman45"
    t.string "teamIDretro"
  end

  create_table "TeamsFranchises", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "franchID"
    t.string "franchName"
    t.string "active"
    t.string "NAassoc"
  end

  create_table "TeamsHalf", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "yearID"
    t.string "lgID"
    t.string "teamID"
    t.integer "Half"
    t.string "divID"
    t.string "DivWin"
    t.integer "Rank"
    t.integer "G"
    t.integer "W"
    t.integer "L"
  end

  create_table "database_structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

end
