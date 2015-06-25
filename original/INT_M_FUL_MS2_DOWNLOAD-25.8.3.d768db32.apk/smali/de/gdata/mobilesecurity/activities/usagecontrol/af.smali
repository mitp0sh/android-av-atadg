.class Lde/gdata/mobilesecurity/activities/usagecontrol/af;
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
    .line 228
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v0

    const-string v1, "1111111"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setSchedule(Ljava/lang/String;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Landroid/view/ViewGroup;)V

    .line 242
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    move-result-object v0

    const-string v1, "0000000"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setSchedule(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/af;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
