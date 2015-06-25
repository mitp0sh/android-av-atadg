.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Name:Ljava/lang/String;

.field private PhoneNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->PhoneNumber:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->PhoneNumber:Ljava/util/List;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->Name:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setPhoneNumber(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->PhoneNumber:Ljava/util/List;

    .line 25
    return-void
.end method

.method public withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->Name:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public withPhoneNumber(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->PhoneNumber:Ljava/util/List;

    .line 33
    return-object p0
.end method
