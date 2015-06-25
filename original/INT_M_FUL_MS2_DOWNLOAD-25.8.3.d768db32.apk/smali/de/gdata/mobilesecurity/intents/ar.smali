.class Lde/gdata/mobilesecurity/intents/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ar;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ar;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->a(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;Z)Z

    .line 717
    return-void
.end method
