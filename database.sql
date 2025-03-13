CREATE TABLE Programs (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    price INT,
    type VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Modules (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    program_id INT REFERENCES Programs (id),
    is_deleted boolean
);

CREATE TABLE Courses (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    module_id INT REFERENCES Modules (id),
    is_deleted boolean
);

CREATE TABLE Lessons (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    body TEXT,
    video_link VARCHAR(255),
    position INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    curse_id INT REFERENCES Courses (id),
    is_deleted boolean
);
