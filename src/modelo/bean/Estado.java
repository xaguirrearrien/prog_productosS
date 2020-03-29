package modelo.bean;

public class Estado {
	
	private int id;
	private String name;
	private String continent;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	
	@Override
	public String toString() {
		return "Estado [id=" + id + ", name=" + name + ", continent=" + continent + "]";
	}
	
	
	
}
