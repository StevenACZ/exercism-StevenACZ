export const decodedValue = ([resistor_color_1, resistor_color_2]) => {
  const first = COLORS.findIndex((color) => color === resistor_color_1);
  const second = COLORS.findIndex((color) => color === resistor_color_2);
  return parseInt(`${first}${second}`);
};

const COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"];