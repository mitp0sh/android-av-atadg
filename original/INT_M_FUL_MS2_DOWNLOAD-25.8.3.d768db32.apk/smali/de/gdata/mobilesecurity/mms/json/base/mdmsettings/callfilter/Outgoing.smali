.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Contact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private Mode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->Contact:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->Contact:Ljava/util/List;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->Mode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setContact(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->Contact:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->Mode:Ljava/lang/Integer;

    .line 19
    return-void
.end method

.method public withContact(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->Contact:Ljava/util/List;

    .line 41
    return-object p0
.end method

.method public withMode(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->Mode:Ljava/lang/Integer;

    .line 27
    return-object p0
.end method
