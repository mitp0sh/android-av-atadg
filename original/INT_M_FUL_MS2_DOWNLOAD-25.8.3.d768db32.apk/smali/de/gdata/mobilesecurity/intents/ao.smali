.class Lde/gdata/mobilesecurity/intents/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ao;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ao;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->finish()V

    .line 542
    return-void
.end method
