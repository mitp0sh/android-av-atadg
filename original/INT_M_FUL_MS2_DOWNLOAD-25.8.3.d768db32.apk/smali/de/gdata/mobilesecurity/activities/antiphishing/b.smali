.class Lde/gdata/mobilesecurity/activities/antiphishing/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/b;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/b;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    const-string v1, "Cancel ..."

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/b;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->finish()V

    .line 150
    return-void
.end method
