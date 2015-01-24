class MapScreen < PM::MapScreen
  title "My Map"
  start_position latitude: 35.090648651123, longitude: -82.965972900391, radius: 4
  def on_appear
    self.type = MKMapTypeHybrid #MKMapTypeSatellite
  end

  def annotation_data
    [{
      longitude: -82.965972900391,
      latitude: 35.090648651123,
      title: "Rainbow Falls",
      subtitle: "Nantahala National Forest",
      action: :show_forest
    },{
      longitude: -82.966093558105,
      latitude: 35.092520895652,
      title: "Turtleback Falls",
      subtitle: "Nantahala National Forest",
      action: :show_forest
    },{
      longitude: -82.95916,
      latitude: 35.07496,
      title: "Windy Falls",
      action: :show_forest
    },{
      longitude: -82.943031505056,
      latitude: 35.102516828489,
      title: "Upper Bearwallow Falls",
      subtitle: "Gorges State Park",
      action: :show_forest
    },{
      longitude: -82.956244328014,
      latitude: 35.085548421623,
      title: "Stairway Falls",
      subtitle: "Gorges State Park",
      your_param: "CustomWhatever",
      action: :show_forest
    }, {
      longitude: -82.965972900391,
      latitude: 35.090648651123,
      title: "Rainbow Falls",
      subtitle: "Nantahala National Forest",
      image: UIImage.imageNamed("custom-pin"),
      action: :show_forest
    }]
  end

  def show_forest
    selected = selected_annotations.first
    # Do something with the selected annotation.
  end
end