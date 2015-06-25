.class Lde/gdata/mobilesecurity/activities/usagecontrol/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ak;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ak;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->j(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ak;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->g(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ak;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setmLocationId(I)V

    goto :goto_0
.end method
