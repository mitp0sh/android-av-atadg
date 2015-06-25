.class Lde/gdata/mobilesecurity/activities/logs/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/r;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/logs/r;->a:I

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 614
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/r;->a:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 615
    new-instance v0, Lde/gdata/mobilesecurity/mms/QueueManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/r;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->h(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;-><init>(Landroid/content/Context;)V

    .line 616
    new-instance v1, Lde/gdata/mobilesecurity/mms/RequestItem;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/r;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->i(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/r;->b:Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-direct {v1, v5, v2, v3, v4}, Lde/gdata/mobilesecurity/mms/RequestItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;->push(Lde/gdata/mobilesecurity/mms/RequestItem;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/r;->a:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 620
    new-instance v0, Lde/gdata/mobilesecurity/mms/QueueManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/r;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->j(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;-><init>(Landroid/content/Context;)V

    .line 621
    new-instance v1, Lde/gdata/mobilesecurity/mms/RequestItem;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/r;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->i(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/r;->b:Ljava/lang/String;

    const/16 v4, 0x1f

    invoke-direct {v1, v5, v2, v3, v4}, Lde/gdata/mobilesecurity/mms/RequestItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;->push(Lde/gdata/mobilesecurity/mms/RequestItem;)V

    goto :goto_0
.end method
