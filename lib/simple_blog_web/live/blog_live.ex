# lib/simple_blog_web/live/blog_live.ex
defmodule SimpleBlogWeb.BlogLive do
  use SimpleBlogWeb, :live_view

  embed_templates "blog_live/*"

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, %{"tag" => tag}) do
    socket
    |> assign(:page_title, tag)
    |> assign(:posts, SimpleBlog.Blog.list_posts_by_tag!(tag))
    |> assign(:tag, tag)
  end

  defp apply_action(socket, :index, _params) do
    assign(socket, :posts, SimpleBlog.Blog.list_posts())
  end

  defp apply_action(socket, :show, %{"slug" => slug}) do
    post = SimpleBlog.Blog.get_post_by_id!(slug)

    socket
    |> assign(:page_title, post.title)
    |> assign(:post, post)
  end

  @impl true
  def render(assigns) do
    apply(__MODULE__, assigns.live_action, [assigns])
  end
end
