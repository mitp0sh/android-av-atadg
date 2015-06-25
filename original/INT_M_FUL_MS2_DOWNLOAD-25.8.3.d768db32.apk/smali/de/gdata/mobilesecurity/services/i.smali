.class Lde/gdata/mobilesecurity/services/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/WatcherService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/i;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/i;->a:Lde/gdata/mobilesecurity/services/WatcherService;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
