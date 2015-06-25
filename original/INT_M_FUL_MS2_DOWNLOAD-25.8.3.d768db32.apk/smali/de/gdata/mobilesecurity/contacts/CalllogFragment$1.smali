.class Lde/gdata/mobilesecurity/contacts/CalllogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/CalllogFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/CalllogFragment;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$1;->this$0:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;

    .line 312
    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$CallogAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 313
    const/4 v0, 0x1

    return v0
.end method
