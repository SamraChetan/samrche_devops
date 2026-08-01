import streamlit as st

st.set_page_config(
    page_title="MovieFlix Demo",
    page_icon="🎬",
    layout="wide"
)

movies = [
    {
        "title": "The Dark Planet",
        "genre": "Sci-Fi",
        "year": 2025,
        "rating": "⭐ 8.8"
    },
    {
        "title": "Shadow Hunter",
        "genre": "Action",
        "year": 2024,
        "rating": "⭐ 8.5"
    },
    {
        "title": "Ocean Mystery",
        "genre": "Adventure",
        "year": 2023,
        "rating": "⭐ 8.2"
    },
    {
        "title": "Code Breakers",
        "genre": "Technology",
        "year": 2025,
        "rating": "⭐ 9.0"
    },
    {
        "title": "The Last Kingdom",
        "genre": "Drama",
        "year": 2022,
        "rating": "⭐ 8.6"
    },
    {
        "title": "Galaxy War",
        "genre": "Sci-Fi",
        "year": 2025,
        "rating": "⭐ 8.9"
    }
]

st.markdown(
    """
    <h1 style='color:red;font-size:55px;'>MovieFlix</h1>
    """,
    unsafe_allow_html=True,
)

search = st.text_input("🔍 Search Movies")

filtered = [
    movie for movie in movies
    if search.lower() in movie["title"].lower()
]

if not filtered:
    filtered = movies

st.subheader("Trending Now")

cols = st.columns(3)

for i, movie in enumerate(filtered):
    with cols[i % 3]:
        st.image(
            "https://picsum.photos/300/420?random={}".format(i),
            use_container_width=True,
        )
        st.markdown(f"### {movie['title']}")
        st.write(f"**Genre:** {movie['genre']}")
        st.write(f"**Year:** {movie['year']}")
        st.write(movie["rating"])

        if st.button(f"▶ Play {movie['title']}", key=i):
            st.success(f"Playing {movie['title']} (Demo)")