.class Lde/gdata/mobilesecurity/intents/an;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/an;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/an;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->buildStatistics()V

    .line 281
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/an;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->sendStatistics()V

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/intents/an;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
