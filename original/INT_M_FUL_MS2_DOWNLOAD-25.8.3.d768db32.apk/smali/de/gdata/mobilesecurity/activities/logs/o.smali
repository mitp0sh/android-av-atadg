.class Lde/gdata/mobilesecurity/activities/logs/o;
.super Lde/gdata/mobilesecurity/activities/logs/s;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/o;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/o;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/logs/s;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/o;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 517
    return-void
.end method
