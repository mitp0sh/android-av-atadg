.class Lde/gdata/mobilesecurity/activities/filter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    const-string v1, "ADDRESS"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->d(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "LAT"

    sget-wide v2, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 221
    const-string v1, "LNG"

    sget-wide v2, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 222
    const-string v1, "RADIUS"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 223
    const-string v1, "NAME"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 225
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->d(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/q;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    const v2, 0x7f0d027a

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
