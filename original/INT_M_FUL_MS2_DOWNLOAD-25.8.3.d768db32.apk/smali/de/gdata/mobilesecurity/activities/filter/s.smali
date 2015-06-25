.class Lde/gdata/mobilesecurity/activities/filter/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/s;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/s;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->g(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    return v1
.end method
