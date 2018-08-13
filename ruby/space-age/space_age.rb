# Given an age in seconds, calculate how old someone would be on:
# other planets
class SpaceAge
  YEAR_IN_SECONDS_ON_EARTH = 31_557_600.0
  ORBITAL_PERIOD_ON_MERCURY = 0.2408467
  ORBITAL_PERIOD_ON_VENUS = 0.61519726
  ORBITAL_PERIOD_ON_MARS = 1.8808158
  ORBITAL_PERIOD_ON_JUPITER = 11.862615
  ORBITAL_PERIOD_ON_SATURN = 29.447498
  ORBITAL_PERIOD_ON_URANUS = 84.016846
  ORBITAL_PERIOD_ON_NEPTUNE = 164.79132

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  def on_earth
    @age_in_seconds / YEAR_IN_SECONDS_ON_EARTH
  end

  def on_mercury
    on_earth * (1 / ORBITAL_PERIOD_ON_MERCURY)
  end

  def on_venus
    on_earth * (1 / ORBITAL_PERIOD_ON_VENUS)
  end

  def on_mars
    on_earth * (1 / ORBITAL_PERIOD_ON_MARS)
  end

  def on_jupiter
    on_earth * (1 / ORBITAL_PERIOD_ON_JUPITER)
  end

  def on_saturn
    on_earth * (1 / ORBITAL_PERIOD_ON_SATURN)
  end

  def on_uranus
    on_earth * (1 / ORBITAL_PERIOD_ON_URANUS)
  end

  def on_neptune
    on_earth * (1 / ORBITAL_PERIOD_ON_NEPTUNE)
  end
end

module BookKeeping
  VERSION = 1
end
