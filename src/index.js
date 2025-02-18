const app = require('./app');

// Establecer el puerto si no está definido en 'app.js (aunque ya lo definimos con el 3000)'
const PORT = app.get('port') || 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
