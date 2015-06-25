.class Lde/gdata/mobilesecurity/activities/filter/t;
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
    .line 258
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/t;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/t;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/w;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/t;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/w;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Lde/gdata/mobilesecurity/activities/filter/o;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getCoordinateByAdresss(Ljava/lang/String;Landroid/os/Handler;)V

    .line 264
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/t;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->g(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/t;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 267
    return-void
.end method
