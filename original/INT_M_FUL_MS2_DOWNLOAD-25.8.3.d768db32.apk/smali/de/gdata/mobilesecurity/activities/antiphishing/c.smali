.class Lde/gdata/mobilesecurity/activities/antiphishing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t trust: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->b(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/c;->b:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->finish()V

    .line 141
    return-void
.end method
