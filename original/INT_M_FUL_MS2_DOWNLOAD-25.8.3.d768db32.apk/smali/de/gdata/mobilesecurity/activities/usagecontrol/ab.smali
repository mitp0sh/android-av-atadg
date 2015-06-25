.class Lde/gdata/mobilesecurity/activities/usagecontrol/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

.field final synthetic b:I

.field final synthetic c:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;I)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ab;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ab;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    iput p3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ab;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ab;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ab;->b:I

    invoke-virtual {v0, v1, p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->changeSchedulePosition(IZ)V

    .line 419
    return-void
.end method
