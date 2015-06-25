.class public Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/io/InputStream;

.field private c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->a:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->b:Ljava/io/InputStream;

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->a:I

    .line 28
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->b:Ljava/io/InputStream;

    .line 29
    iput-object p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->c:Ljava/lang/StringBuilder;

    .line 30
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeader()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->c:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getStatuscode()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;->a:I

    return v0
.end method
