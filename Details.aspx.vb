
Partial Class Details
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedrecipe As String = e.Values("recipe_name").ToString()

        lbl_deletedRecipe.text = deletedrecipe & " has been deleted from the database."


        Response.AddHeader("refresh", "3;url=./default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("Refresh", "3;URL=./default.aspx")
    End Sub
End Class
