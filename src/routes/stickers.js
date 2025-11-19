import express from "express";
import { pool } from "../db.js";

const stickersRouter = express.Router();

stickersRouter.get("/all", async (req, res) => {
  const result = await pool.query("SELECT * FROM sticker");
  res.send(result.rows);
});

stickersRouter.get("/:id", async (req, res) => {
  const { id } = req.params;

  const result = await pool.query("SELECT * FROM sticker WHERE sticker_id = $1", [id]);
  res.send(result).rows[0];
});

stickersRouter.get("/creator/:creator_id", async (req, res) => {
  const { creator_id } = req.params;

  const result = await pool.query("SELECT * FROM sticker WHERE creator_id = $1", [creator_id]);
  res.send(result.rows);
});

stickersRouter.get("/image_sticker", async (req, res) => {
  const result = await pool.query("SELECT * FROM sticker, image_sticker WHERE sticker.sticker_id = image_sticker.sticker_id");
  res.send(result.rows);
});

stickersRouter.get("/polygonal", async (req, res) => {
  const result = await pool.query("SELECT * FROM sticker, polygonal_sticker WHERE sticker.sticker_id = polygonal_sticker.sticker_id");
  res.send(result.rows);
});

stickersRouter.post("/create", async (req, res) => {
  const { creator_id, name, description, image_data } = req.body;

  if (!creator_id || !name || !description || !image_data) {
    return res.status(400).send("All fields are required");
  }

  const date_created = CurrentDate();

  const result = await pool.query( "INSERT INTO sticker (creator_id, name, description, date_created) VALUES ($1, $2, $3, $4)", [creator_id, name, description, date_created] );
  await pool.query("INSERT INTO image_sticker (sticker_id, image_data) VALUES ($1, $2);", [result.rows[0].sticker_id, image_data]);
});

export { stickersRouter };
