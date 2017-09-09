defmodule AppWeb.RegistrationController do
    use AppWeb, :controller

    # plug :action

    def new(conn, _params) do
        changeset = User.changeset(%User{})
        render conn, "new.html", changeset: changeset
    end

    def create(conn, %{"user" => user_params}) do
        changeset = User.changeset(%User{}, user_params)
        case App.User.create(changeset, App.Repo) do
            {:ok, changeset} ->
                conn
                |> put_flash(:info, "Your account was created")
                |> redirect(to: "/")
            {:error, changeset} ->
                conn
                |> put_flash(:info, "Unable to create account")
                |> render("new.html", changeset: changeset)
        end
    end
end