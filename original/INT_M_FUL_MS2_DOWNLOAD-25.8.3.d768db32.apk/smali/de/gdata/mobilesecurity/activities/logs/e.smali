.class Lde/gdata/mobilesecurity/activities/logs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lde/gdata/mobilesecurity/activities/logs/LogDetail;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogDetail;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/e;->d:Lde/gdata/mobilesecurity/activities/logs/LogDetail;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/e;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/e;->b:Ljava/lang/String;

    iput p4, p0, Lde/gdata/mobilesecurity/activities/logs/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 73
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a()Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 74
    new-instance v0, Lde/gdata/mobilesecurity/mms/QueueManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/e;->d:Lde/gdata/mobilesecurity/activities/logs/LogDetail;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v1, Lde/gdata/mobilesecurity/mms/RequestItem;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/e;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/e;->b:Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-direct {v1, v5, v2, v3, v4}, Lde/gdata/mobilesecurity/mms/RequestItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;->push(Lde/gdata/mobilesecurity/mms/RequestItem;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/e;->c:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v0, Lde/gdata/mobilesecurity/mms/QueueManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/e;->d:Lde/gdata/mobilesecurity/activities/logs/LogDetail;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v1, Lde/gdata/mobilesecurity/mms/RequestItem;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/e;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/e;->b:Ljava/lang/String;

    const/16 v4, 0x1f

    invoke-direct {v1, v5, v2, v3, v4}, Lde/gdata/mobilesecurity/mms/RequestItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;->push(Lde/gdata/mobilesecurity/mms/RequestItem;)V

    goto :goto_0
.end method
