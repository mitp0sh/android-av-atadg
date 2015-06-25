.class Lde/gdata/mobilesecurity/activities/usagecontrol/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aa;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/aa;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Z)Z

    .line 355
    const/4 v0, 0x0

    return v0
.end method
