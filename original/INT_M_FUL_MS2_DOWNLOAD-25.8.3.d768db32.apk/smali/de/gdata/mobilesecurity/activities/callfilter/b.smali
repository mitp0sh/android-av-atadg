.class Lde/gdata/mobilesecurity/activities/callfilter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/b;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 69
    new-instance v0, Lde/gdata/mobilesecurity/mms/QueueManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/callfilter/b;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v1, Lde/gdata/mobilesecurity/mms/RequestItem;

    const/4 v2, 0x4

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/callfilter/b;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->b(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/callfilter/b;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->c(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-direct {v1, v2, v3, v4, v5}, Lde/gdata/mobilesecurity/mms/RequestItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;->push(Lde/gdata/mobilesecurity/mms/RequestItem;)V

    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/b;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->a(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V

    .line 73
    return-void
.end method
