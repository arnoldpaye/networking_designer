import com.alicanto.networking_designer.Role
import com.alicanto.networking_designer.User
import com.alicanto.networking_designer.Supplier
import com.alicanto.networking_designer.Quotation

class BootStrap {

    def init = { servletContext ->
        // Roles
        def adminRole = new Role(name: 'Admin', description: 'admin role', status: true, createdBy: null, createdDate: null, updatedBy: null, updatedDate: null)
        adminRole.save()
        def generalRole = new Role(name: 'General', description: 'general role', status: true, createdBy: null, createdDate: null, updatedBy: null, updatedDate:null)
        generalRole.save()

        // Users
        def systemUser = new User(userName: 'system', password: 'none'.encodeAsMD5(), name: 'System', lastName: 'System', identityNumber: '123456', status: true, lastAccessDate: null, role: null)
        systemUser.save()
        def adminUser = new User(userName: 'admin', password: 'admin'.encodeAsMD5(), name: 'Admin', lastName: 'Admin', identityNumber: '654321', status: true, lastAccessDate: null, role: adminRole, createdBy: systemUser, createdDate: new Date())
        adminUser.save()

        // Supplier
        def supplier1 = new Supplier(name: 'Supplier 1', description: 'description for supplier 1', address: 'address for supplier 1', status: true, createdBy: adminUser, createdDate: new Date())
        supplier1.save()

        // Quotation
        def quotation1 = new Quotation(name: 'Quotation 1', description: 'description for quotation 1', date: new Date(), status: true, supplier: supplier1, createdBy: adminUser, createdDate: new Date())
        quotation1.save()
    }
    def destroy = {
    }
}
