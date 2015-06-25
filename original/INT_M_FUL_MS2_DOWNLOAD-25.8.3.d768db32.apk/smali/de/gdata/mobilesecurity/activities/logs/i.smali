.class Lde/gdata/mobilesecurity/activities/logs/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/i;->a:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/i;->a:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->k(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/i;->a:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->l(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdate()V

    .line 661
    :cond_0
    return-void
.end method
