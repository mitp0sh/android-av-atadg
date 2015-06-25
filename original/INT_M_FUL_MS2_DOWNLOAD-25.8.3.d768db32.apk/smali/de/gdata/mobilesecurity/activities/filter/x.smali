.class Lde/gdata/mobilesecurity/activities/filter/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->setValuesToFilterGroup(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    .line 210
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isColliding(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setActivated(Z)V

    .line 213
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    .line 215
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 216
    const-string v1, "filterGroupId"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 223
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 224
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/x;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
