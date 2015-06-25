.class Lde/gdata/mobilesecurity/activities/logs/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/m;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/m;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/n;->a:Lde/gdata/mobilesecurity/activities/logs/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/n;->a:Lde/gdata/mobilesecurity/activities/logs/m;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    .line 470
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/n;->a:Lde/gdata/mobilesecurity/activities/logs/m;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    .line 471
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/n;->a:Lde/gdata/mobilesecurity/activities/logs/m;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/m;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    .line 472
    return-void
.end method
