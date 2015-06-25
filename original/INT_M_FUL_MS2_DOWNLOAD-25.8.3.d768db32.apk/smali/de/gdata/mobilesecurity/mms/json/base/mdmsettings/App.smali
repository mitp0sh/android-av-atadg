.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Config:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

.field private Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;",
            ">;"
        }
    .end annotation
.end field

.field private ProfileId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->Items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConfig()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->Config:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->Items:Ljava/util/List;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->ProfileId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setConfig(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->Config:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    .line 26
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->Items:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setProfileId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->ProfileId:Ljava/lang/Integer;

    .line 13
    return-void
.end method

.method public withConfig(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->Config:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    .line 34
    return-object p0
.end method

.method public withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->Items:Ljava/util/List;

    .line 47
    return-object p0
.end method

.method public withProfileId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->ProfileId:Ljava/lang/Integer;

    .line 21
    return-object p0
.end method
