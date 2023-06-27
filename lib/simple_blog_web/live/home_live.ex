defmodule SimpleBlogWeb.HomeLive do
  use SimpleBlogWeb, :live_view
  @impl true
  def render(assigns) do
    ~H"""
      We are Elixirized. We are a small team of developers from around the globe working on SaaS Products
      that fill a void. 
    """

  end
end
