.class Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 45
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
