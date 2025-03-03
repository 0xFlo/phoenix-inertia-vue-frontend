defmodule DemoAppWeb.LandingController do
  use DemoAppWeb, :controller

  def index(conn, _params) do
    conn
    |> assign_prop(:page_title, "AI Video Generation | GDPR & AI Act Compliant | VideoGenAI")
    |> assign_prop(
      :meta_description,
      "Create professional, GDPR and AI Act compliant videos with our AI-powered platform. Transform your content marketing strategy with VideoGenAI."
    )
    |> render_inertia("LandingPage")
  end
end
