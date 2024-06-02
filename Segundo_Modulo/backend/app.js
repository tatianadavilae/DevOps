const { MongoClient } = require('mongodb');

const uri = 'mongodb://backend-network:27017'; // URI de conexión a tu base de datos MongoDB
const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });

async function connectToMongoDB() {
    try {
        await client.connect();
        console.log('Conexión establecida con la base de datos');
    } catch (error) {
        console.error('Error al conectar con la base de datos:', error);
    }
}

connectToMongoDB();

async function insertData() {
    try {
        const db = client.db('nombre_de_tu_base_de_datos'); // Reemplaza 'nombre_de_tu_base_de_datos' con el nombre de tu base de datos
        const collection = db.collection('nombre_de_tu_coleccion'); // Reemplaza 'nombre_de_tu_coleccion' con el nombre de tu colección

        const data = { // Objeto de datos que deseas insertar
            nombre: 'Ejemplo',
            edad: 30,
            email: 'ejemplo@example.com'
        };

        const result = await collection.insertOne(data); // Inserta un documento en la colección

        console.log('Documento insertado:', result.insertedId);
    } catch (error) {
        console.error('Error al insertar datos:', error);
    }
}

insertData();