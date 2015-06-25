.class Lde/gdata/mobilesecurity/activities/filter/r;
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
    .line 233
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/r;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/r;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/r;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 238
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/r;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 239
    return-void
.end method
