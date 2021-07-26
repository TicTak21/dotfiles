module.exports = {
  type: 'postgres',
  host: '0.0.0.0',
  port: 5432,
  username: 'postgres',
  password: 'password',
  database: 'ideas',
  synchronize: true,
  logging: true,
  entities: ['dist/**/*.entity.js'],
};
