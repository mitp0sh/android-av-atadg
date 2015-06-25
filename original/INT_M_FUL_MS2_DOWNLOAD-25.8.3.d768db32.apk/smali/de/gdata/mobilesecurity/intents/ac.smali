.class Lde/gdata/mobilesecurity/intents/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/ActionBar$OnNavigationListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3

    .prologue
    .line 1116
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->b(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->b(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lde/gdata/mobilesecurity/intents/Main;->setProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->b(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfile(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ac;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->c(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfileType(I)V

    .line 1122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
