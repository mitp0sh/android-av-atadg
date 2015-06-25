.class Lde/gdata/mobilesecurity/intents/al;
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
    .line 204
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/al;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/al;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->a(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 208
    return-void
.end method
