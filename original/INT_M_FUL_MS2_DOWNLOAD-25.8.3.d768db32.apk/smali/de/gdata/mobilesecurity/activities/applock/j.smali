.class Lde/gdata/mobilesecurity/activities/applock/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/j;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 123
    new-instance v0, Lde/gdata/mobilesecurity/mms/QueueManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/j;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v1, Lde/gdata/mobilesecurity/mms/RequestItem;

    const/4 v2, 0x2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/j;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->b(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/j;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->c(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-direct {v1, v2, v3, v4, v5}, Lde/gdata/mobilesecurity/mms/RequestItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/QueueManager;->push(Lde/gdata/mobilesecurity/mms/RequestItem;)V

    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/j;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    .line 127
    return-void
.end method
