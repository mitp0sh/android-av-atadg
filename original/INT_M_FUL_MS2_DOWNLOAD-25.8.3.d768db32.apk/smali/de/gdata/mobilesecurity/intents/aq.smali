.class Lde/gdata/mobilesecurity/intents/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/aq;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/aq;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 721
    new-instance v0, Lde/gdata/mobilesecurity/intents/at;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/aq;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/aq;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/intents/at;-><init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/at;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 722
    return-void
.end method
