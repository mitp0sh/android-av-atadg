.class public Lde/gdata/mobilesecurity/mms/json/base/eula/Item;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Content:Ljava/lang/String;

.field private ContentType:Ljava/lang/Integer;

.field private Language:Ljava/lang/Integer;

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->ContentType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Language:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Content:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setContentType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->ContentType:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public setLanguage(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Language:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public withContent(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/eula/Item;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Content:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public withContentType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/eula/Item;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->ContentType:Ljava/lang/Integer;

    .line 67
    return-object p0
.end method

.method public withLanguage(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/eula/Item;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Language:Ljava/lang/Integer;

    .line 54
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/eula/Item;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item;->Name:Ljava/lang/String;

    .line 41
    return-object p0
.end method
