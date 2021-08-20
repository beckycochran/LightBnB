const properties = require('./json/properties.json');
const users = require('./json/users.json');
const {Pool} = require('pg');

const pool = new Pool({
  user: 'vagrant', 
  password: 123, 
  host: 'localhost', 
  database: 'lightbnb'}
  );
/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithEmail = function(email) {

  return pool

  //$1 indicates selecting first item in the array of this function
  .query(`SELECT * FROM users WHERE email = $1`, [email])
  .then((result) => {
    // console.log(result.rows, "result.rows console log");
    if (result.rows.length === 0) {
      return null
    }
    return result.rows[0];
    // return result.rows;
    //result.rows contiant
  })
  .catch((err) => {
    console.log(err.message);
  });

}
//////////////////////EXAMPLE RUNNER CODE
// getUserWithEmail('example1@email.com')
//   .then((result) => {
//     console.log(result);
//   })

exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = function(id) {

  // return Promise.resolve(users[id]);


  return pool

  //$1 indicates selecting first item in the array of this function
  .query(`SELECT * FROM users WHERE id = $1`, [id])
  .then((result) => {
    if (result.rows.length === 0) {
      return null
    }
    return result.rows[0];
  })
  .catch((err) => {
    console.log(err.message);
  });
}

//////////////////////////EXAMPLE RUNNER CODE
// getUserWithId(2)
//   .then((result) => {
//     console.log(result);
//   })

exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
const addUser =  function(user) {

  return pool

  //$1 indicates selecting first item in the array of this function

  .query(`INSERT INTO users (name, email, password) VALUES($1, $2, $3) RETURNING *;`, [user.name, user.email, user.password])
  .then((result) => {
    console.log(result.rows, "result.rows");
    return result.rows[0];
  })
  .catch((err) => {
    console.log(err.message);
  });
}
////////////////////////////////////////example RUNNER CODE
//   const user1 = {
//     name: 'James',
//     email: 'example4@email.com',
//     password: 'password'
//   };

// addUser(user1)
//   .then((result) => {
//     console.log(result);
//   })

exports.addUser = addUser;

/// Reservations                 /////////////////////////////////////////////////// EDITS TO BE CONSIDERED FROM HERE

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {
  return pool

  //$1 indicates selecting first item in the array of this function
  .query(`INSERT INTO property_reviews (guest_id) VALUES($1) LIMIT $2 RETURNING *;`, [guest_id, limit])
  .then((result) => {
    if (result.rows.length === 0) {
      return null
    }
    return result.rows[0];
  })
  .catch((err) => {
    console.log(err.message);
  });
}

getAllReservations(10, limit)
  .then((result) => {
    console.log(result);
  })


exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */




const getAllProperties = function(options, limit = 10) {
  // object called might look something like:
  // {
  //   city,
  //   owner_id,
  //   minimum_price_per_night,
  //   maximum_price_per_night,
  //   minimum_rating;
  // }
  
  
  // if an owner_id is passed in, only return properties belonging to that owner.
 
 
  // if a minimum_price_per_night and a maximum_price_per_night, only return properties within that price range. (HINT: The database stores amounts in cents, not dollars!)
  // if a minimum_rating is passed in, only return properties with a rating equal to or higher than that.

  
  
  
  pool
    .query(`SELECT * FROM properties LIMIT $1`, [limit])
    .then((result) => {
      console.log(result.rows);
    })
    .catch((err) => {
      console.log(err.message);
    });
};

exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
// // Property
// {
//   owner_id: int,
//   title: string,
//   description: string,
//   thumbnail_photo_url: string,
//   cover_photo_url: string,
//   cost_per_night: string,
//   street: string,
//   city: string,
//   province: string,
//   post_code: string,
//   country: string,
//   parking_spaces: int,
//   number_of_bathrooms: int,
//   number_of_bedrooms: int
// }



.query(`INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) VALUES($1, $2, $3) RETURNING *;`, [user.name, user.email, user.password])
.then((result) => {
  console.log(result.rows, "result.rows");
  return result.rows[0];
})
.catch((err) => {
  console.log(err.message);
});
}
exports.addProperty = addProperty;
