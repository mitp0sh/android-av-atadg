.class Lde/gdata/mobilesecurity/intents/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/SigCloudConnector;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/by;->a:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "request.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/by;->a:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "Create request.txt on SD Card"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 78
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 79
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 81
    :goto_1
    const/4 v3, -0x1

    invoke-virtual {v2, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/by;->a:Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
