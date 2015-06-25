.class Lde/gdata/mobilesecurity/activities/usagecontrol/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/q;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/q;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/q;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/q;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v0, 0x0

    return v0
.end method
